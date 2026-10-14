.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->B(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method
