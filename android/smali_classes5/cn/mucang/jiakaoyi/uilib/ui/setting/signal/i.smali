.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->c:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;->c:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Landroid/view/View;)V

    return-void
.end method
