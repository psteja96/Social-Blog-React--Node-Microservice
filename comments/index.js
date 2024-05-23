const express = require("express");
const axios =require('axios');
const bodyParser = require("body-parser");
const { randomBytes } = require("crypto");
const app = express();
const cors = require("cors");
app.use(bodyParser.json());
app.use(cors());

commentsByPostId = {};

app.get("/posts/:id/comments", (req, res) => {
  res.send(commentsByPostId[req.params.id] || []);
  console.log(commentsByPostId);
});
app.post("/posts/:id/comments", async (req, res) => {
  const commentId = randomBytes(4).toString("hex");
  const { content } = req.body;
  const comments = commentsByPostId[req.params.id] || [];
  comments.push({ id: commentId, content });
  commentsByPostId[req.params.id] = comments;
  res.status(201).send(comments);
  console.log(req.body);

  await axios.post('http://localhost:4005/events',{
    type:'CommentCreated',
    data:{
      id: commentId,
      content,
      postId:req.params.id
  }
  }).catch(err=>{})

});

app.post('/events',(req,res)=>{
  console.log('Event received',req.body.type);
  res.send({});
})

app.listen(4001, () => {
  console.log("Comments service port 4001");
});
