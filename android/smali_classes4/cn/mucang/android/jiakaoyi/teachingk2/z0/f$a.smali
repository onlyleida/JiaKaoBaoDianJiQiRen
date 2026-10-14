.class Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "\u6821\u51c6\u51fa\u9519:"

    .line 1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    if-eqz v3, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Z)Z

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 4
    :try_start_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    invoke-static {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    :goto_0
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :try_start_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Z)Z

    throw p1

    :cond_0
    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->c(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
