.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Wheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_0

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Gear:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_1

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Path:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_2

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->State:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_3

    .line 10
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Speed:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_4

    .line 12
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Motor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_5

    .line 14
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Collect:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    if-ne v0, v1, :cond_6

    .line 16
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method
