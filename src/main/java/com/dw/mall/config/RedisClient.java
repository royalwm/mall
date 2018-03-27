package com.dw.mall.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@Component
public class RedisClient {
	@Autowired
	private JedisPool jedisPool;

	public void set(String key, String value) throws Exception {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			jedis.set(key, value);
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public String get(String key) throws Exception {

		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			return jedis.get(key);
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public void setExpire(String key, int seconds) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			jedis.expire(key, seconds);
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public void hset(String key, String field, String value) throws Exception {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			jedis.hset(key, field, value);
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public String hget(String key, String field) throws Exception {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			String hget = jedis.hget(key, field);
			return hget;
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public Boolean hexists(String key, String field) throws Exception {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			Boolean hexists = jedis.hexists(key, field);
			return hexists;
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}

	public Long hdel(String key, String... fields) throws Exception {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			Long hexists = jedis.hdel(key, fields);
			return hexists;
		} finally {
			// 返还到连接池
			jedis.close();
		}
	}
}
