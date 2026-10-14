.class Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectionUtility"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;

    invoke-direct {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;-><init>()V

    iput-object p1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->funcName:Ljava/lang/String;

    iput-object p0, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->instance:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->invoke(Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;

    invoke-direct {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;-><init>()V

    iput-object p1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->funcName:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Class;

    check-cast p3, Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, p2, v1

    iput-object p2, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->formalParameters:[Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p4, p1, v1

    iput-object p1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->effectiveParameters:[Ljava/lang/Object;

    iput-object p0, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->instance:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->invoke(Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callFuncNParam(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;

    invoke-direct {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;-><init>()V

    iput-object p1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->funcName:Ljava/lang/String;

    iput-object p3, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->formalParameters:[Ljava/lang/Class;

    iput-object p4, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->effectiveParameters:[Ljava/lang/Object;

    iput-object p0, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->instance:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->invoke(Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getClassField(Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;)Ljava/lang/reflect/Field;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fullClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClassField failed, field context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReflectionUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ReflectionUtility"

    const-string v1, "getIntField failed, e="

    new-instance v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;

    invoke-direct {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;-><init>()V

    iput-object p1, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fieldName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getClassField(Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getLongField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    const-string v0, "ReflectionUtility"

    const-string v1, "getLongField failed, e="

    new-instance v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;

    invoke-direct {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;-><init>()V

    iput-object p1, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fieldName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getClassField(Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 p0, 0x0

    :goto_1
    return-wide p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "ReflectionUtility"

    const-string v1, "getObjectField failed, e="

    new-instance v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;

    invoke-direct {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;-><init>()V

    iput-object p1, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fullClassName:Ljava/lang/String;

    iput-object p2, v2, Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;->fieldName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getClassField(Lcom/alivc/component/player/BGMPlayer/ReflectionGetFieldContext;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static invoke(Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->fullClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->funcName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->formalParameters:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->effectiveParameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke failed, call context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReflectionUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not available"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReflectionUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeFullClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReflectionUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newProxyContextByClassName(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
    .locals 5

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    invoke-direct {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;-><init>()V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->object:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newProxyContextByClassName failed, fullClassName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReflectionUtility"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
