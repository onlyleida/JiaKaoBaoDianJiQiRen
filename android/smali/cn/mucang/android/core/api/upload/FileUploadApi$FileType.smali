.class public final enum Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/upload/FileUploadApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

.field public static final enum Audio:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

.field public static final enum File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

.field public static final enum Image:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

.field public static final enum Video:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Image:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    .line 2
    new-instance v1, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Video:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    .line 3
    new-instance v3, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-string v5, "Audio"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Audio:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    .line 4
    new-instance v5, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-string v7, "File"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->$VALUES:[Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->$VALUES:[Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    invoke-virtual {v0}, [Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    return-object v0
.end method
