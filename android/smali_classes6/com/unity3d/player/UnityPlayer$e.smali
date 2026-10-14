.class final enum Lcom/unity3d/player/UnityPlayer$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum b:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum c:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum d:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum e:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum f:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum g:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum h:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum i:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum j:Lcom/unity3d/player/UnityPlayer$e;

.field public static final enum k:Lcom/unity3d/player/UnityPlayer$e;

.field private static final synthetic l:[Lcom/unity3d/player/UnityPlayer$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/player/UnityPlayer$e;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$e;->a:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$e;

    const-string v3, "RESUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/player/UnityPlayer$e;->b:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v3, Lcom/unity3d/player/UnityPlayer$e;

    const-string v5, "QUIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/player/UnityPlayer$e;->c:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v5, Lcom/unity3d/player/UnityPlayer$e;

    const-string v7, "SURFACE_LOST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v7, Lcom/unity3d/player/UnityPlayer$e;

    const-string v9, "SURFACE_ACQUIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/player/UnityPlayer$e;->e:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v9, Lcom/unity3d/player/UnityPlayer$e;

    const-string v11, "FOCUS_LOST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/player/UnityPlayer$e;->f:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v11, Lcom/unity3d/player/UnityPlayer$e;

    const-string v13, "FOCUS_GAINED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v13, Lcom/unity3d/player/UnityPlayer$e;

    const-string v15, "NEXT_FRAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/player/UnityPlayer$e;->h:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v15, Lcom/unity3d/player/UnityPlayer$e;

    const-string v14, "URL_ACTIVATED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/player/UnityPlayer$e;->i:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v14, Lcom/unity3d/player/UnityPlayer$e;

    const-string v12, "ORIENTATION_ANGLE_CHANGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/player/UnityPlayer$e;->j:Lcom/unity3d/player/UnityPlayer$e;

    new-instance v12, Lcom/unity3d/player/UnityPlayer$e;

    const-string v10, "SPLASH_ADS_DISMISS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/player/UnityPlayer$e;->k:Lcom/unity3d/player/UnityPlayer$e;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/unity3d/player/UnityPlayer$e;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/unity3d/player/UnityPlayer$e;->l:[Lcom/unity3d/player/UnityPlayer$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
