.class Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a(Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
