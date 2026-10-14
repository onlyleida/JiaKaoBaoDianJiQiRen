.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/light/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;->b:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->b(Z)V

    return-void
.end method
