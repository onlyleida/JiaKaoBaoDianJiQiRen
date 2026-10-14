.class Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->m([ILcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;->b:Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;->b:Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method
