.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->D(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method
