.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
