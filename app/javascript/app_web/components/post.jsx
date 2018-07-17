// A single Post fetching from DB.
import React from 'react'

class Post extends React.Component {
  
  render() {
    return (
      <article>
        <h4>我是题目</h4>
        <p>我是正文...</p>
        <span>Daniel Zhang</span>
        <span>8.1</span>
      </article>
    )
  }
}

export default Post;
