.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/i0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/i0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->H(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
