.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

.field public static final enum AUTO:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

.field public static final enum PopUpWindow:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;


# instance fields
.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    const-string v1, "None"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->None:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    const-string v3, "PopUpWindow"

    const/4 v4, 0x1

    const-string v5, "\u5f39\u7a97\u89e3\u5239"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->PopUpWindow:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    const-string v5, "AUTO"

    const/4 v6, 0x2

    const-string v7, "\u81ea\u52a8\u89e3\u5239"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->AUTO:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static isPopup()Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->PopUpWindow:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->type:I

    const-string v2, "keyTeachingBRModule"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->type:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/BrakeReleaseType;

    return-object v0
.end method
