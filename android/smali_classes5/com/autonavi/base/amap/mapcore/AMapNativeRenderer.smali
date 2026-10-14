.class public Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeDrawGradientColorLine([FIF[II[III[FII)V
.end method

.method public static native nativeDrawLineByMultiColor([FIFI[II[II[FII)V
.end method

.method public static native nativeDrawLineByMultiTextureID([FIF[IFI[IIF[FII)V
.end method

.method public static nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x0

    .line 1
    invoke-static/range {v0 .. v16}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FIIZ)V

    return-void
.end method

.method public static native nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FIIZ)V
.end method

.method public static native nativeDrawLineInit()V
.end method
