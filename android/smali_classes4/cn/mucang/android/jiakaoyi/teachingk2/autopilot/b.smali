.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;->a:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;->a:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->c(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
