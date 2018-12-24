import axios from 'axios';
const ROOT_URL = "http://localhost:3000/api";
export const FETCH_POST = "fetch_post"
export const CREATE_POST = "create_post";
export const PATCH_POST = "patch_post";
export const DELETE_POST = "delete_post";

export const fetchPost = (id) => {
    const request = axios.get(`${ROOT_URL}/posts/${id}`);
    return {
        type: FETCH_POST,
        payload: request
    }
}

export const createPost = (params) => {
    const request = axios.post(`${ROOT_URL}/posts`, params);
    return {
        type: CREATE_POST,
        payload: request
    }
}

export const patchPost = (id, params) => {
    const request = axios.patch(`${ROOT_URL}/posts/${id}`, params);
    return {
        type: PATCH_POST,
        payload: request
    }
}

export const deletePost = (id) => {
    const request = axios.delete(`${ROOT_URL}/posts/${id}`);
    return {
        type: DELETE_POST,
        payload: request
    }
}

