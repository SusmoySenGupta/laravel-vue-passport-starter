import Base from './base.js';

export default {
    register(data) {
        return Base().post("user", data);
    },
};