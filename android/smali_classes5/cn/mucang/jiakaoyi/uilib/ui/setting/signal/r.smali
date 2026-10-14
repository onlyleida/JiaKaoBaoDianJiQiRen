.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->I(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method
