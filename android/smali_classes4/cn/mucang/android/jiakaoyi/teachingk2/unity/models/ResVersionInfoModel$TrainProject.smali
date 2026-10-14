.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrainProject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

.field public static final enum BianXianLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

.field public static final enum DoubleYuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

.field public static final enum YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    const-string v1, "BianXianLianXi"

    const/4 v2, 0x0

    const-string v3, "\u8fb9\u7ebf\u7ec3\u4e60"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->BianXianLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    const-string v3, "YuanHuanLianXi"

    const/4 v4, 0x1

    const-string v5, "\u5706\u73af\u7ec3\u4e60"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    const-string v5, "DoubleYuanHuanLianXi"

    const/4 v6, 0x2

    const-string v7, "8\u5b57\u8def\u7ec3\u4e60"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->DoubleYuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    return-object v0
.end method
