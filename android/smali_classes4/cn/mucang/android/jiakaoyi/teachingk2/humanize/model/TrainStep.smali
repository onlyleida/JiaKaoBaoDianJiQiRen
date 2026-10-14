.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;
    }
.end annotation


# instance fields
.field public deduction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;",
            ">;"
        }
    .end annotation
.end field

.field public passed:Z

.field public startTime:J

.field public step:I

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    .line 6
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->valid:Z

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->passed:Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDeduction(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-direct {v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(ZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->valid:Z

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->passed:Z

    return-void
.end method
