namespace System.Web;

public delegate void HttpCacheValidateHandler(HttpContext context, object data, ref HttpValidationStatus validationStatus);
