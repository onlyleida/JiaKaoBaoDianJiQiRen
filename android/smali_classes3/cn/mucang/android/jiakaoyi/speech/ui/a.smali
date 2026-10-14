.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/a;->a:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/a;->a:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->d(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
