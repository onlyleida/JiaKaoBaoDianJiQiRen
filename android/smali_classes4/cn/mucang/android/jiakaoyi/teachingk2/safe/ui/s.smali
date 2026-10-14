.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method
