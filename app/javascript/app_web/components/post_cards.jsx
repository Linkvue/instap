// This components will include post cards, also, this is 
// used on pagination. 
import React from 'react'

import PostCard from './post_card'

class PostCards extends React.Component {

  renderPostCards() {
    const posts = [];
    for(let i=0; i < 9; i++) {
      posts.push(<PostCard />);
    }
    return posts;
  }

  render() {
    return (
      <div>
        {this.renderPostCards()}
      </div>
    )
  }
}

export default PostCards;
