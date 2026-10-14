.class Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;JLcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    instance-of v1, v0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\u6808\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "SimpleLoadingDialog"

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 8
    :goto_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V

    throw v0
.end method
