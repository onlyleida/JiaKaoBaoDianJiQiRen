.class Lcom/iflytek/cloud/a/d/e/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/d/e/b/b;


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/a/d/e/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b$b;->a:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/a/d/e/b/b;Lcom/iflytek/cloud/a/d/e/b/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e/b/b$b;-><init>(Lcom/iflytek/cloud/a/d/e/b/b;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b$b;->a:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/b/b;->a(Lcom/iflytek/cloud/a/d/e/b/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b$b;->a:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/b/b;->b(Lcom/iflytek/cloud/a/d/e/b/b;)Lcom/iflytek/cloud/a/d/e/b/b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b$b;->a:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/b/b;->b(Lcom/iflytek/cloud/a/d/e/b/b;)Lcom/iflytek/cloud/a/d/e/b/b$c;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, v0, p3}, Lcom/iflytek/cloud/a/d/e/b/b$c;->a([BI)V

    :cond_0
    return-object p2
.end method
