package com.yanyi.util;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;

public class JsonUtil
{
  private static Logger logger = Logger.getLogger(JsonUtil.class);
  
  public static String object2Json(Object object)
  {
    if (object == null) {
      return null;
    }
    ObjectMapper om = new ObjectMapper();
//    String json = null;
    try
    {
      return om.writeValueAsString(object);
    }
    catch (Exception e)
    {
      e.printStackTrace();
      logger.error(e.getMessage());
      throw new RuntimeException(e.getMessage());
    }
  }
  
  public static <T> T json2Object(String json, TypeReference<T> typeReference)
  {
    if ((json == null) || (json.equals(""))) {
      return null;
    }
    ObjectMapper mapper = new ObjectMapper();
    try
    {
      mapper.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
      mapper.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);
      

      return mapper.readValue(json, typeReference);
    }
    catch (Exception e)
    {
      e.printStackTrace();
      logger.error(e.getMessage());
      throw new RuntimeException(e.getMessage());
    }
  }
  
  public static <T> T json2Object(String json, Class<?> clazz)
  {
    if ((json == null) || (json.equals(""))) {
      return null;
    }
    ObjectMapper mapper = new ObjectMapper();
    try
    {
      mapper.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
      mapper.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);

      return (T) mapper.readValue(json, clazz);
    }
    catch (Exception e)
    {
      e.printStackTrace();
      logger.error(e.getMessage());
      throw new RuntimeException(e.getMessage());
    }
  }
}

