import { FETCH_POST, CREATE_POST, DELETE_POST, PATCH_POST } from '../actions'

// state should be a list of posts;
export default (state = {}, action) => {
    switch(action.type) {
        case FETCH_POST:
            const postState = { ...state, post: action.payload.data.post };
            return postState;
        case CREATE_POST:
            const createState = { ...state, post: action.payload.data.post };
            return createState;
        case DELETE_POST:
            const deleteState = state //state - delete_post;  //{ ...state, post: action.payload.data.post };
            return deleteState;
    }
}