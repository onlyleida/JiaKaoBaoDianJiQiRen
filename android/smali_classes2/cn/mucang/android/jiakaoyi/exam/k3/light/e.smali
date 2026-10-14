.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/light/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/c/e;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/view/View;)V

    return-void
.end method
