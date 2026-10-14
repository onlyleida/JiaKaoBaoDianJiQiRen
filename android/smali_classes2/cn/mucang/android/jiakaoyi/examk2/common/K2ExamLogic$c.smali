.class public Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

.field public c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field public d:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(ZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;ZI)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(ZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;ZI)V

    return-void
.end method

.method public constructor <init>(ZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;ZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->a:Z

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->b:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    .line 7
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->d:Z

    return-void
.end method
