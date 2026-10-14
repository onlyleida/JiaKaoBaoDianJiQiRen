.class public abstract Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/v/b;


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;

.field protected volatile c:Z

.field public final d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;


# direct methods
.method protected constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    return v0
.end method

.method public m()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8f93\u51fa\u6d41\u5df2\u7ecf\u5173\u95ed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-object v0
.end method

.method public t()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8f93\u5165\u6d41\u5df2\u7ecf\u5173\u95ed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
