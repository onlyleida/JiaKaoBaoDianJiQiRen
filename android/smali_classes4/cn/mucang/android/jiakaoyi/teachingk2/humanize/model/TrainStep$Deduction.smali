.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deduction"
.end annotation


# instance fields
.field public code:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "c"
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "d"
    .end annotation
.end field

.field public score:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sc"
    .end annotation
.end field

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->code:I

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->desc:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->score:I

    return-void
.end method
