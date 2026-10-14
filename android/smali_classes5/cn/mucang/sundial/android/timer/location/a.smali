.class public final synthetic Lcn/mucang/sundial/android/timer/location/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/timer/location/LocationReportManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/location/a;->a:Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/a;->a:Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->b(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
