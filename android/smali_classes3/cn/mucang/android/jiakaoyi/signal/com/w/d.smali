.class public final Lcn/mucang/android/jiakaoyi/signal/com/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0008\u0010\u0012\u001a\u00020\u000eH\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitor;",
        "",
        "()V",
        "dialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
        "getDialog$annotations",
        "getDialog",
        "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
        "setDialog",
        "(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V",
        "toConnectCom",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
        "init",
        "",
        "onComError",
        "cms",
        "Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitorState;",
        "release",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->b:Ljava/util/List;

    return-void
.end method

.method public static final a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    return-object v0
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->h(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->f(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V

    return-void
.end method

.method public static final e(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V
    .locals 1

    const-string v0, "cms"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/w/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V
    .locals 5

    const-string v0, "$cms"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->c()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object v1

    if-nez v1, :cond_8

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_3

    :goto_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    const-string v3, "\u8fde\u63a5\u9519\u8bef"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v0

    :goto_4
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    const-string v0, "\u91cd\u65b0\u8fde\u63a5"

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/w/a;->a:Lcn/mucang/android/jiakaoyi/signal/com/w/a;

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->b(Landroid/view/View$OnClickListener;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/w/b;->a:Lcn/mucang/android/jiakaoyi/signal/com/w/b;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11
    :goto_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    .line 12
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    return-void
.end method

.method private static final g(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->b:Ljava/util/List;

    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->name:Ljava/lang/String;

    const-string v2, "\u901a\u9053\u9500\u6bc1\u91cd\u8fde"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->S(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    goto :goto_0

    :cond_0
    const-string v1, "\u4e0d\u9500\u6bc1\uff0c\u76f4\u63a5\u542f\u52a8"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    goto :goto_0

    :cond_1
    const-string p0, "\u5168\u90e8\u9500\u6bc1\u91cd\u8fde"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->L()V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    :cond_2
    return-void
.end method

.method private static final h(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final i()V
    .locals 0

    return-void
.end method

.method public static final j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    return-void
.end method
