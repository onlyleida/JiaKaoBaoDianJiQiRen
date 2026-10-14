.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V

    const-wide/16 v1, 0x64

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
