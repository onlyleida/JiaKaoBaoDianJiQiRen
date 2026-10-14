.class public final enum Lcom/alivc/live/pusher/AlivcImageFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_ARGB:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_BGR:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_BGRA:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_EGL_IMG:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_RGB:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_RGBA:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_TEXTURE_2D:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_TEXTURE_OES:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_UNKNOW:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUV420P:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUV444P:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVJ420P:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVJ420SP:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVJ444P:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVNV12:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVNV21:Lcom/alivc/live/pusher/AlivcImageFormat;

.field public static final enum IMAGE_FORMAT_YUVYV12:Lcom/alivc/live/pusher/AlivcImageFormat;


# instance fields
.field private mImageFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v1, "IMAGE_FORMAT_UNKNOW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_UNKNOW:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v1, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v3, "IMAGE_FORMAT_BGR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_BGR:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v3, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v5, "IMAGE_FORMAT_RGB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_RGB:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v5, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v7, "IMAGE_FORMAT_ARGB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_ARGB:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v7, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v9, "IMAGE_FORMAT_BGRA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_BGRA:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v9, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v11, "IMAGE_FORMAT_RGBA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_RGBA:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v11, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v13, "IMAGE_FORMAT_YUV420P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUV420P:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v13, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v15, "IMAGE_FORMAT_YUVYV12"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVYV12:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v15, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v14, "IMAGE_FORMAT_YUVNV21"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVNV21:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v14, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v12, "IMAGE_FORMAT_YUVNV12"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVNV12:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v12, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v10, "IMAGE_FORMAT_YUVJ420P"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVJ420P:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v10, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v8, "IMAGE_FORMAT_YUVJ420SP"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVJ420SP:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v8, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v6, "IMAGE_FORMAT_YUVJ444P"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVJ444P:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v6, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v4, "IMAGE_FORMAT_YUV444P"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUV444P:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v4, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v2, "IMAGE_FORMAT_EGL_IMG"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_EGL_IMG:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v2, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v8, "IMAGE_FORMAT_TEXTURE_2D"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_TEXTURE_2D:Lcom/alivc/live/pusher/AlivcImageFormat;

    new-instance v8, Lcom/alivc/live/pusher/AlivcImageFormat;

    const-string v6, "IMAGE_FORMAT_TEXTURE_OES"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/alivc/live/pusher/AlivcImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_TEXTURE_OES:Lcom/alivc/live/pusher/AlivcImageFormat;

    const/16 v6, 0x11

    new-array v6, v6, [Lcom/alivc/live/pusher/AlivcImageFormat;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    aput-object v20, v6, v4

    aput-object v8, v6, v2

    sput-object v6, Lcom/alivc/live/pusher/AlivcImageFormat;->$VALUES:[Lcom/alivc/live/pusher/AlivcImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alivc/live/pusher/AlivcImageFormat;->mImageFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcImageFormat;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcImageFormat;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcImageFormat;->$VALUES:[Lcom/alivc/live/pusher/AlivcImageFormat;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcImageFormat;

    return-object v0
.end method


# virtual methods
.method public getAlivcImageFormat()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcImageFormat;->mImageFormat:I

    return v0
.end method
