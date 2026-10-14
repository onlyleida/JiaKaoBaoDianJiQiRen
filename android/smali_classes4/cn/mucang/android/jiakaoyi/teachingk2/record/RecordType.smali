.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

.field public static final enum Behavior:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;


# instance fields
.field public final typeId:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    const-string v1, "Behavior"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u884c\u4e3a\u8bc6\u522b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->Behavior:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    new-array v1, v3, [Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->typeId:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    return-object v0
.end method
