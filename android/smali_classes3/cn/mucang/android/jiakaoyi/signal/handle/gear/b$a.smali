.class Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)Ljava/io/BufferedWriter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)Ljava/io/BufferedWriter;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)Ljava/io/BufferedWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
