.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum AreaK2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum AreaK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum AutoShuttle:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum Gps:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum Language:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum MapDataK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum MapFence:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum PoDingArea:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum Special:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum TileMap:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

.field public static final enum Unity:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;


# instance fields
.field public final fileRoot:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v1, "Teaching"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u6559\u5b66\u6570\u636e"

    const-string v5, "teaching"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v8, "MapData"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "\u79d1\u4e8c\u5730\u56fe"

    const-string v12, "map"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v14, "Unity"

    const/4 v15, 0x2

    const/16 v16, 0x3

    const-string v17, "Unity"

    const-string v18, "unity"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Unity:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v8, "MapFence"

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, "\u7535\u5b50\u6805\u680f"

    const-string v12, "fence"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapFence:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v14, "Special"

    const/4 v15, 0x4

    const/16 v16, 0x5

    const-string v17, "\u7279\u6b8a\u533a\u57df"

    const-string v18, "special"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Special:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v8, "Gps"

    const/4 v9, 0x5

    const/16 v10, 0xe

    const-string v11, "GPS\u906e\u6321\u533a\u57df"

    const-string v12, "gps"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Gps:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v14, "TileMap"

    const/4 v15, 0x6

    const/16 v16, 0x14

    const-string v17, "\u74e6\u7247\u5730\u56fe"

    const-string v18, "tile"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->TileMap:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v8, "MapDataK3"

    const/4 v9, 0x7

    const/16 v10, 0x15

    const-string v11, "\u79d1\u4e09\u5730\u56fe"

    const-string v12, "mapK3"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v15, "MapDataB2"

    const/16 v16, 0x8

    const/16 v17, 0x16

    const-string v18, "\u5927\u8f66\u79d1\u4e8c\u5730\u56fe"

    const-string v19, "mapB2"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 10
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v21, "AreaK2"

    const/16 v22, 0x9

    const/16 v23, 0x18

    const-string v24, "\u79d1\u4e8c\u533a\u57df"

    const-string v25, "areaK2"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AreaK2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 11
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v15, "AreaK3"

    const/16 v16, 0xa

    const/16 v17, 0x19

    const-string v18, "\u79d1\u4e09\u533a\u57df"

    const-string v19, "areaK3"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AreaK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 12
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v21, "Language"

    const/16 v22, 0xb

    const/16 v23, 0x1e

    const-string v24, "\u7b2c\u4e8c\u8bed\u8a00"

    const-string v25, "language"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Language:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 13
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v15, "AutoShuttle"

    const/16 v16, 0xc

    const/16 v17, 0x9

    const-string v18, "\u81ea\u52a8\u63a5\u9a73\u8f66"

    const-string v19, "autoShuttle"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AutoShuttle:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 14
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v21, "PoDingArea"

    const/16 v22, 0xd

    const/16 v23, 0x1a

    const-string v24, "\u5761\u9876\u533a\u57df"

    const-string v25, "podingArea"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->PoDingArea:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/16 v14, 0xe

    new-array v14, v14, [Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v0, v14, v6

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v3, v14, v0

    const/4 v0, 0x5

    aput-object v4, v14, v0

    const/4 v0, 0x6

    aput-object v5, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v7, v14, v0

    const/16 v0, 0x9

    aput-object v8, v14, v0

    const/16 v0, 0xa

    aput-object v9, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v11, v14, v0

    const/16 v0, 0xd

    aput-object v12, v14, v0

    .line 15
    sput-object v14, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    return-object v0
.end method
