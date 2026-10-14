.class public final enum Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/Texture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_BULGE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_BW:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_CHROMA_KEY:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_DENT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FISHEYE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_MIRROR:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_NIGHT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_SQUEEZE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_STRETCH:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_TUNNEL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_TWIRL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 2
    new-instance v1, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v3, "TEXTURE_FILT3x3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 3
    new-instance v3, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v5, "TEXTURE_CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 4
    new-instance v5, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v7, "TEXTURE_EXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 5
    new-instance v7, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v9, "TEXTURE_EXT_BW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BW:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 6
    new-instance v9, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v11, "TEXTURE_EXT_NIGHT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_NIGHT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 7
    new-instance v11, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v13, "TEXTURE_EXT_CHROMA_KEY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_CHROMA_KEY:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 8
    new-instance v13, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v15, "TEXTURE_EXT_SQUEEZE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_SQUEEZE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 9
    new-instance v15, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v14, "TEXTURE_EXT_TWIRL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TWIRL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 10
    new-instance v14, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v12, "TEXTURE_EXT_TUNNEL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TUNNEL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 11
    new-instance v12, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v10, "TEXTURE_EXT_BULGE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BULGE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 12
    new-instance v10, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v8, "TEXTURE_EXT_DENT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_DENT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 13
    new-instance v8, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v6, "TEXTURE_EXT_FISHEYE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_FISHEYE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 14
    new-instance v6, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v4, "TEXTURE_EXT_STRETCH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_STRETCH:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 15
    new-instance v4, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v2, "TEXTURE_EXT_MIRROR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_MIRROR:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 16
    new-instance v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v6, "TEXTURE_EXT_FILT3x3"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

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

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->$VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 1
    const-class v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->$VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object v0
.end method
