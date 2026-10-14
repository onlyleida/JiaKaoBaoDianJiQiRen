.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/level/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Exam:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->HelpTeach:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Video:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/s$a;->a:[I

    return-void
.end method
