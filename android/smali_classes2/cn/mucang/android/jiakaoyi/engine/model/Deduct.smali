.class public Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field public deductScore:I

.field public desc:Ljava/lang/String;

.field public judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

.field public name:Ljava/lang/String;

.field public step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public useMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    .line 8
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 9
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    .line 10
    iput p7, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->useMode:I

    return-void
.end method

.method public static empty(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->auto:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    return-object v7
.end method

.method public static wrapDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
    .locals 3

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>()V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    .line 8
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public needAutoCheck()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->auto:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public supportPracticeMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->useMode:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v0

    return v0
.end method
