.class public final synthetic Lcn/mucang/android/jiakaoyi/examk2/common/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/g;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/g;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/g;->b:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->L(I)V

    return-void
.end method
