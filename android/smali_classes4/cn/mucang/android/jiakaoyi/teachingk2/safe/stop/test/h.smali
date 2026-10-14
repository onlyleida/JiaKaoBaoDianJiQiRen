.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;->b:D

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->m(D)V

    return-void
.end method
