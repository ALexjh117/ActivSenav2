import axios from 'axios';

const api = axios.create({
  baseURL: 'http://192.168.10.104:3001/api',
});

export default api;
