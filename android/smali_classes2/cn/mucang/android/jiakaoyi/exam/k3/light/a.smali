.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/light/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    return-void
.end method


# virtual methods
.method public final onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->checkSignal(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
