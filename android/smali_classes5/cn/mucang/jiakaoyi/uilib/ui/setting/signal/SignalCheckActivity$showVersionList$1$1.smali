.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;"
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
.field final synthetic $popup:Landroid/widget/PopupWindow;

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->$popup:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->invoke(Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->id:I

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$1;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$1;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    invoke-direct {v3, p1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->n(ILkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    return-void
.end method
