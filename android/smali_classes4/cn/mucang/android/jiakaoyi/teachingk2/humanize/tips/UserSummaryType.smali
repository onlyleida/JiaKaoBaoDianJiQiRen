.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

.field public static final enum ACHIEVE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

.field public static final enum ATTEND:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

.field public static final enum FEATURE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

.field public static final enum GLOBAL:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

.field public static final enum GUIDE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;


# instance fields
.field private final description:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_summary_type_guide:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GUIDE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->GUIDE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_summary_type_achieve:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ACHIEVE"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->ACHIEVE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_summary_type_global:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "GLOBAL"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->GLOBAL:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_summary_type_attend:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ATTEND"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v8, v10, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->ATTEND:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_summary_type_feature:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "FEATURE"

    const/4 v12, 0x5

    invoke-direct {v7, v11, v10, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->FEATURE:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    new-array v9, v12, [Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;

    return-object v0
.end method
