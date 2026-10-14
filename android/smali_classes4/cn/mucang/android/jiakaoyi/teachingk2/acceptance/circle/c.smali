.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->N(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method
