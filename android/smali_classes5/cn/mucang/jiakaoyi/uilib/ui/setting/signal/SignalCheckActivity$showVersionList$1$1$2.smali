.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->invoke(Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBoxVersionInfo;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoxVersion\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isBox2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isBox3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasOBD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->$it:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->hasOBD()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;->b:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->u(I)V

    const-string p1, "setBoxVersion \u5bfc\u81f4clearExtendConfig"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d()V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
