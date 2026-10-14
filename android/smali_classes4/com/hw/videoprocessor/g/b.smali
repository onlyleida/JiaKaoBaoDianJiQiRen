.class public Lcom/hw/videoprocessor/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hw/videoprocessor/g/b$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static varargs a(Lcom/hw/videoprocessor/g/b$a;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/hw/videoprocessor/g/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "():"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget p0, p0, Lcom/hw/videoprocessor/g/b$a;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1, p2}, Lcom/hw/videoprocessor/g/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hw/videoprocessor/g/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->e([Ljava/lang/StackTraceElement;)Lcom/hw/videoprocessor/g/b$a;

    move-result-object v0

    .line 3
    invoke-static {v0, p0, p1}, Lcom/hw/videoprocessor/g/b;->a(Lcom/hw/videoprocessor/g/b$a;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    iget-object p1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/hw/videoprocessor/g/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->e([Ljava/lang/StackTraceElement;)Lcom/hw/videoprocessor/g/b$a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static e([Ljava/lang/StackTraceElement;)Lcom/hw/videoprocessor/g/b$a;
    .locals 5

    .line 1
    new-instance v0, Lcom/hw/videoprocessor/g/b$a;

    invoke-direct {v0}, Lcom/hw/videoprocessor/g/b$a;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 3
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    const-string v3, ".java"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    .line 6
    :cond_0
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hw/videoprocessor/g/b$a;->b:Ljava/lang/String;

    .line 7
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    iput p0, v0, Lcom/hw/videoprocessor/g/b$a;->c:I

    :cond_1
    return-object v0
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hw/videoprocessor/g/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->e([Ljava/lang/StackTraceElement;)Lcom/hw/videoprocessor/g/b$a;

    move-result-object v0

    .line 3
    invoke-static {v0, p0, p1}, Lcom/hw/videoprocessor/g/b;->a(Lcom/hw/videoprocessor/g/b$a;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    iget-object p1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hw/videoprocessor/g/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->e([Ljava/lang/StackTraceElement;)Lcom/hw/videoprocessor/g/b$a;

    move-result-object v0

    .line 3
    invoke-static {v0, p0, p1}, Lcom/hw/videoprocessor/g/b;->a(Lcom/hw/videoprocessor/g/b$a;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    iget-object p1, v0, Lcom/hw/videoprocessor/g/b$a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
