.class public Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;,
        Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$b;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public static c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$b;->a()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;Landroid/content/Context;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_contact_official:I

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$string;->mc_contact_number:I

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_retry:I

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/socket/util/b;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, p2, v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 5
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    return-object p1
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private synthetic h(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f39\u7a97("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\u6d88\u5931"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog dismiss\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->f(Landroid/view/View;)V

    return-void
.end method

.method public synthetic i(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->h(Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public declared-synchronized j(Ljava/lang/String;Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/jiakaoyi/uilib/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    if-ne p3, v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Middle:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    if-ne p3, v0, :cond_1

    .line 5
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 7
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/h;

    invoke-interface {v2, v0}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    monitor-exit p0

    return v1

    .line 9
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget v2, p3, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->grade:I

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    iget v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->grade:I

    if-le v2, v3, :cond_5

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b()V

    .line 15
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a()V

    :cond_5
    if-eqz p2, :cond_6

    .line 16
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 17
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d(Ljava/lang/String;Landroid/content/Context;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 20
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 21
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a()V

    .line 22
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->d(Ljava/lang/String;Landroid/content/Context;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object p2

    .line 23
    :cond_7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    .line 24
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/util/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/util/a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 25
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 26
    monitor-exit p0

    return p1

    .line 27
    :cond_8
    monitor-exit p0

    return v1

    .line 28
    :cond_9
    :goto_2
    :try_start_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
