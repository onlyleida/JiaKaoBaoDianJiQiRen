.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public static final enum DaoKu_Done:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public static final enum DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public static final enum DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public static final enum DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;


# instance fields
.field public final desc:Ljava/lang/String;

.field public passCount:I

.field public final standard:Ljava/lang/String;

.field public final step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final subCode:I

.field public totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_daoku_initial_stat:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->None:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_in_out_project_straight:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_front_back_pass:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v9, "DaoKu_Line"

    const/4 v10, 0x1

    const/16 v12, 0x2437

    move-object v8, v0

    move-object v11, v1

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_in_out_project_right:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_right_pass:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v9, "DaoKu_Right"

    const/4 v10, 0x2

    const/16 v12, 0x2438

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_in_out_project_left:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_left_pass:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v9, "DaoKu_Left"

    const/4 v10, 0x3

    const/16 v12, 0x2439

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_daoku_done:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v9, "DaoKu_Done"

    const/4 v10, 0x4

    const/4 v12, -0x1

    const-string v14, ""

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Done:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    const/4 v1, 0x5

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    const/4 v5, 0x0

    aput-object v7, v1, v5

    const/4 v5, 0x1

    aput-object v0, v1, v5

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v3, v1, v0

    const/4 v0, 0x4

    aput-object v4, v1, v0

    .line 6
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->totalCount:I

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->passCount:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->subCode:I

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->desc:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->standard:Ljava/lang/String;

    return-void
.end method

.method public static findByCode(I)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->subCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->None:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object v0
.end method


# virtual methods
.method public matchSubStep(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p0, v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_straight_out:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_straight_in:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p0, v0, :cond_3

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_left_out:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 10
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_left_in:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p0, v0, :cond_5

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 13
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_right_out:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_first_test_right_in:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method public setConfigCount(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->totalCount:I

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->passCount:I

    return-void
.end method
