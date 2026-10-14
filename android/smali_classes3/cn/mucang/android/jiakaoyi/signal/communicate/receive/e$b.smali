.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->parse(I)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    return-void
.end method
