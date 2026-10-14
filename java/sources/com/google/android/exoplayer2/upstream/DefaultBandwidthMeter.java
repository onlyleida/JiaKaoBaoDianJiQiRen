package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import com.google.android.exoplayer2.util.SlidingPercentile;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final ImmutableMap<Integer, Long> initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final ImmutableListMultimap<String, Integer> DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS = createInitialBitrateCountryGroupAssignment();
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of(6200000L, 3900000L, 2300000L, 1300000L, 620000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of(248000L, 160000L, 142000L, 127000L, 113000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of(2200000L, 1300000L, 950000L, 760000L, 520000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of(4400000L, 2300000L, 1500000L, 1100000L, 640000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of(2600000L, 2200000L, 2000000L, 1500000L, 470000L);

    private static ImmutableListMultimap<String, Integer> createInitialBitrateCountryGroupAssignment() {
        return ImmutableListMultimap.builder().putAll("AD", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("AE", (Object[]) new Integer[]{1, 4, 4, 4, 2, 2}).putAll("AF", (Object[]) new Integer[]{4, 4, 3, 4, 2, 2}).putAll("AG", (Object[]) new Integer[]{4, 2, 1, 4, 2, 2}).putAll("AI", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("AL", (Object[]) new Integer[]{1, 1, 1, 1, 2, 2}).putAll("AM", (Object[]) new Integer[]{2, 2, 1, 3, 2, 2}).putAll("AO", (Object[]) new Integer[]{3, 4, 3, 1, 2, 2}).putAll("AR", (Object[]) new Integer[]{2, 4, 2, 1, 2, 2}).putAll("AS", (Object[]) new Integer[]{2, 2, 3, 3, 2, 2}).putAll("AT", (Object[]) new Integer[]{0, 1, 0, 0, 0, 2}).putAll("AU", (Object[]) new Integer[]{0, 2, 0, 1, 1, 2}).putAll("AW", (Object[]) new Integer[]{1, 2, 0, 4, 2, 2}).putAll("AX", (Object[]) new Integer[]{0, 2, 2, 2, 2, 2}).putAll("AZ", (Object[]) new Integer[]{3, 3, 3, 4, 4, 2}).putAll("BA", (Object[]) new Integer[]{1, 1, 0, 1, 2, 2}).putAll("BB", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("BD", (Object[]) new Integer[]{2, 0, 3, 3, 2, 2}).putAll("BE", (Object[]) new Integer[]{0, 0, 2, 3, 2, 2}).putAll("BF", (Object[]) new Integer[]{4, 4, 4, 2, 2, 2}).putAll("BG", (Object[]) new Integer[]{0, 1, 0, 0, 2, 2}).putAll("BH", (Object[]) new Integer[]{1, 0, 2, 4, 2, 2}).putAll("BI", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("BJ", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("BL", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("BM", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("BN", (Object[]) new Integer[]{3, 2, 1, 0, 2, 2}).putAll("BO", (Object[]) new Integer[]{1, 2, 4, 2, 2, 2}).putAll("BQ", (Object[]) new Integer[]{1, 2, 1, 2, 2, 2}).putAll("BR", (Object[]) new Integer[]{2, 4, 3, 2, 2, 2}).putAll("BS", (Object[]) new Integer[]{2, 2, 1, 3, 2, 2}).putAll("BT", (Object[]) new Integer[]{3, 0, 3, 2, 2, 2}).putAll("BW", (Object[]) new Integer[]{3, 4, 1, 1, 2, 2}).putAll("BY", (Object[]) new Integer[]{1, 1, 1, 2, 2, 2}).putAll("BZ", (Object[]) new Integer[]{2, 2, 2, 2, 2, 2}).putAll("CA", (Object[]) new Integer[]{0, 3, 1, 2, 4, 2}).putAll("CD", (Object[]) new Integer[]{4, 2, 2, 1, 2, 2}).putAll("CF", (Object[]) new Integer[]{4, 2, 3, 2, 2, 2}).putAll("CG", (Object[]) new Integer[]{3, 4, 2, 2, 2, 2}).putAll("CH", (Object[]) new Integer[]{0, 0, 0, 0, 1, 2}).putAll("CI", (Object[]) new Integer[]{3, 3, 3, 3, 2, 2}).putAll("CK", (Object[]) new Integer[]{2, 2, 3, 0, 2, 2}).putAll("CL", (Object[]) new Integer[]{1, 1, 2, 2, 2, 2}).putAll("CM", (Object[]) new Integer[]{3, 4, 3, 2, 2, 2}).putAll("CN", (Object[]) new Integer[]{2, 2, 2, 1, 3, 2}).putAll("CO", (Object[]) new Integer[]{2, 3, 4, 2, 2, 2}).putAll("CR", (Object[]) new Integer[]{2, 3, 4, 4, 2, 2}).putAll("CU", (Object[]) new Integer[]{4, 4, 2, 2, 2, 2}).putAll("CV", (Object[]) new Integer[]{2, 3, 1, 0, 2, 2}).putAll("CW", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("CY", (Object[]) new Integer[]{1, 1, 0, 0, 2, 2}).putAll("CZ", (Object[]) new Integer[]{0, 1, 0, 0, 1, 2}).putAll("DE", (Object[]) new Integer[]{0, 0, 1, 1, 0, 2}).putAll("DJ", (Object[]) new Integer[]{4, 0, 4, 4, 2, 2}).putAll("DK", (Object[]) new Integer[]{0, 0, 1, 0, 0, 2}).putAll("DM", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("DO", (Object[]) new Integer[]{3, 4, 4, 4, 2, 2}).putAll("DZ", (Object[]) new Integer[]{3, 3, 4, 4, 2, 4}).putAll("EC", (Object[]) new Integer[]{2, 4, 3, 1, 2, 2}).putAll("EE", (Object[]) new Integer[]{0, 1, 0, 0, 2, 2}).putAll("EG", (Object[]) new Integer[]{3, 4, 3, 3, 2, 2}).putAll("EH", (Object[]) new Integer[]{2, 2, 2, 2, 2, 2}).putAll("ER", (Object[]) new Integer[]{4, 2, 2, 2, 2, 2}).putAll("ES", (Object[]) new Integer[]{0, 1, 1, 1, 2, 2}).putAll("ET", (Object[]) new Integer[]{4, 4, 4, 1, 2, 2}).putAll("FI", (Object[]) new Integer[]{0, 0, 0, 0, 0, 2}).putAll("FJ", (Object[]) new Integer[]{3, 0, 2, 3, 2, 2}).putAll("FK", (Object[]) new Integer[]{4, 2, 2, 2, 2, 2}).putAll("FM", (Object[]) new Integer[]{3, 2, 4, 4, 2, 2}).putAll("FO", (Object[]) new Integer[]{1, 2, 0, 1, 2, 2}).putAll("FR", (Object[]) new Integer[]{1, 1, 2, 0, 1, 2}).putAll("GA", (Object[]) new Integer[]{3, 4, 1, 1, 2, 2}).putAll("GB", (Object[]) new Integer[]{0, 0, 1, 1, 1, 2}).putAll("GD", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("GE", (Object[]) new Integer[]{1, 1, 1, 2, 2, 2}).putAll("GF", (Object[]) new Integer[]{2, 2, 2, 3, 2, 2}).putAll("GG", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("GH", (Object[]) new Integer[]{3, 1, 3, 2, 2, 2}).putAll("GI", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("GL", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("GM", (Object[]) new Integer[]{4, 3, 2, 4, 2, 2}).putAll("GN", (Object[]) new Integer[]{4, 3, 4, 2, 2, 2}).putAll("GP", (Object[]) new Integer[]{2, 1, 2, 3, 2, 2}).putAll("GQ", (Object[]) new Integer[]{4, 2, 2, 4, 2, 2}).putAll("GR", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("GT", (Object[]) new Integer[]{3, 2, 3, 1, 2, 2}).putAll("GU", (Object[]) new Integer[]{1, 2, 3, 4, 2, 2}).putAll("GW", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("GY", (Object[]) new Integer[]{3, 3, 3, 4, 2, 2}).putAll("HK", (Object[]) new Integer[]{0, 1, 2, 3, 2, 0}).putAll("HN", (Object[]) new Integer[]{3, 1, 3, 3, 2, 2}).putAll("HR", (Object[]) new Integer[]{1, 1, 0, 0, 3, 2}).putAll("HT", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("HU", (Object[]) new Integer[]{0, 0, 0, 0, 0, 2}).putAll("ID", (Object[]) new Integer[]{3, 2, 3, 3, 2, 2}).putAll("IE", (Object[]) new Integer[]{0, 0, 1, 1, 3, 2}).putAll("IL", (Object[]) new Integer[]{1, 0, 2, 3, 4, 2}).putAll("IM", (Object[]) new Integer[]{0, 2, 0, 1, 2, 2}).putAll("IN", (Object[]) new Integer[]{2, 1, 3, 3, 2, 2}).putAll("IO", (Object[]) new Integer[]{4, 2, 2, 4, 2, 2}).putAll("IQ", (Object[]) new Integer[]{3, 3, 4, 4, 2, 2}).putAll("IR", (Object[]) new Integer[]{3, 2, 3, 2, 2, 2}).putAll("IS", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("IT", (Object[]) new Integer[]{0, 4, 0, 1, 2, 2}).putAll("JE", (Object[]) new Integer[]{2, 2, 1, 2, 2, 2}).putAll("JM", (Object[]) new Integer[]{3, 3, 4, 4, 2, 2}).putAll("JO", (Object[]) new Integer[]{2, 2, 1, 1, 2, 2}).putAll("JP", (Object[]) new Integer[]{0, 0, 0, 0, 2, 1}).putAll("KE", (Object[]) new Integer[]{3, 4, 2, 2, 2, 2}).putAll(ExpandedProductParsedResult.KILOGRAM, (Object[]) new Integer[]{2, 0, 1, 1, 2, 2}).putAll("KH", (Object[]) new Integer[]{1, 0, 4, 3, 2, 2}).putAll("KI", (Object[]) new Integer[]{4, 2, 4, 3, 2, 2}).putAll("KM", (Object[]) new Integer[]{4, 3, 2, 3, 2, 2}).putAll("KN", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("KP", (Object[]) new Integer[]{4, 2, 2, 2, 2, 2}).putAll("KR", (Object[]) new Integer[]{0, 0, 1, 3, 1, 2}).putAll("KW", (Object[]) new Integer[]{1, 3, 1, 1, 1, 2}).putAll("KY", (Object[]) new Integer[]{1, 2, 0, 2, 2, 2}).putAll("KZ", (Object[]) new Integer[]{2, 2, 2, 3, 2, 2}).putAll("LA", (Object[]) new Integer[]{1, 2, 1, 1, 2, 2}).putAll(ExpandedProductParsedResult.POUND, (Object[]) new Integer[]{3, 2, 0, 0, 2, 2}).putAll("LC", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("LI", (Object[]) new Integer[]{0, 2, 2, 2, 2, 2}).putAll("LK", (Object[]) new Integer[]{2, 0, 2, 3, 2, 2}).putAll("LR", (Object[]) new Integer[]{3, 4, 4, 3, 2, 2}).putAll("LS", (Object[]) new Integer[]{3, 3, 2, 3, 2, 2}).putAll("LT", (Object[]) new Integer[]{0, 0, 0, 0, 2, 2}).putAll("LU", (Object[]) new Integer[]{1, 0, 1, 1, 2, 2}).putAll("LV", (Object[]) new Integer[]{0, 0, 0, 0, 2, 2}).putAll("LY", (Object[]) new Integer[]{4, 2, 4, 3, 2, 2}).putAll("MA", (Object[]) new Integer[]{3, 2, 2, 1, 2, 2}).putAll("MC", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("MD", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("ME", (Object[]) new Integer[]{1, 2, 0, 1, 2, 2}).putAll("MF", (Object[]) new Integer[]{2, 2, 1, 1, 2, 2}).putAll("MG", (Object[]) new Integer[]{3, 4, 2, 2, 2, 2}).putAll("MH", (Object[]) new Integer[]{4, 2, 2, 4, 2, 2}).putAll("MK", (Object[]) new Integer[]{1, 1, 0, 0, 2, 2}).putAll("ML", (Object[]) new Integer[]{4, 4, 2, 2, 2, 2}).putAll("MM", (Object[]) new Integer[]{2, 3, 3, 3, 2, 2}).putAll("MN", (Object[]) new Integer[]{2, 4, 2, 2, 2, 2}).putAll("MO", (Object[]) new Integer[]{0, 2, 4, 4, 2, 2}).putAll("MP", (Object[]) new Integer[]{0, 2, 2, 2, 2, 2}).putAll("MQ", (Object[]) new Integer[]{2, 2, 2, 3, 2, 2}).putAll("MR", (Object[]) new Integer[]{3, 0, 4, 3, 2, 2}).putAll("MS", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("MT", (Object[]) new Integer[]{0, 2, 0, 0, 2, 2}).putAll("MU", (Object[]) new Integer[]{2, 1, 1, 2, 2, 2}).putAll("MV", (Object[]) new Integer[]{4, 3, 2, 4, 2, 2}).putAll("MW", (Object[]) new Integer[]{4, 2, 1, 0, 2, 2}).putAll("MX", (Object[]) new Integer[]{2, 4, 4, 4, 4, 2}).putAll("MY", (Object[]) new Integer[]{1, 0, 3, 2, 2, 2}).putAll("MZ", (Object[]) new Integer[]{3, 3, 2, 1, 2, 2}).putAll("NA", (Object[]) new Integer[]{4, 3, 3, 2, 2, 2}).putAll("NC", (Object[]) new Integer[]{3, 0, 4, 4, 2, 2}).putAll("NE", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("NF", (Object[]) new Integer[]{2, 2, 2, 2, 2, 2}).putAll("NG", (Object[]) new Integer[]{3, 3, 2, 3, 2, 2}).putAll("NI", (Object[]) new Integer[]{2, 1, 4, 4, 2, 2}).putAll("NL", (Object[]) new Integer[]{0, 2, 3, 2, 0, 2}).putAll("NO", (Object[]) new Integer[]{0, 1, 2, 0, 0, 2}).putAll("NP", (Object[]) new Integer[]{2, 0, 4, 2, 2, 2}).putAll("NR", (Object[]) new Integer[]{3, 2, 3, 1, 2, 2}).putAll("NU", (Object[]) new Integer[]{4, 2, 2, 2, 2, 2}).putAll("NZ", (Object[]) new Integer[]{0, 2, 1, 2, 4, 2}).putAll("OM", (Object[]) new Integer[]{2, 2, 1, 3, 3, 2}).putAll("PA", (Object[]) new Integer[]{1, 3, 3, 3, 2, 2}).putAll("PE", (Object[]) new Integer[]{2, 3, 4, 4, 2, 2}).putAll("PF", (Object[]) new Integer[]{2, 2, 2, 1, 2, 2}).putAll("PG", (Object[]) new Integer[]{4, 4, 3, 2, 2, 2}).putAll("PH", (Object[]) new Integer[]{2, 1, 3, 3, 3, 2}).putAll("PK", (Object[]) new Integer[]{3, 2, 3, 3, 2, 2}).putAll("PL", (Object[]) new Integer[]{1, 0, 1, 2, 3, 2}).putAll("PM", (Object[]) new Integer[]{0, 2, 2, 2, 2, 2}).putAll("PR", (Object[]) new Integer[]{2, 1, 2, 2, 4, 3}).putAll("PS", (Object[]) new Integer[]{3, 3, 2, 2, 2, 2}).putAll("PT", (Object[]) new Integer[]{0, 1, 1, 0, 2, 2}).putAll("PW", (Object[]) new Integer[]{1, 2, 4, 1, 2, 2}).putAll("PY", (Object[]) new Integer[]{2, 0, 3, 2, 2, 2}).putAll("QA", (Object[]) new Integer[]{2, 3, 1, 2, 3, 2}).putAll("RE", (Object[]) new Integer[]{1, 0, 2, 2, 2, 2}).putAll("RO", (Object[]) new Integer[]{0, 1, 0, 1, 0, 2}).putAll("RS", (Object[]) new Integer[]{1, 2, 0, 0, 2, 2}).putAll("RU", (Object[]) new Integer[]{0, 1, 0, 1, 4, 2}).putAll("RW", (Object[]) new Integer[]{3, 3, 3, 1, 2, 2}).putAll("SA", (Object[]) new Integer[]{2, 2, 2, 1, 1, 2}).putAll("SB", (Object[]) new Integer[]{4, 2, 3, 2, 2, 2}).putAll("SC", (Object[]) new Integer[]{4, 2, 1, 3, 2, 2}).putAll("SD", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("SE", (Object[]) new Integer[]{0, 0, 0, 0, 0, 2}).putAll("SG", (Object[]) new Integer[]{1, 0, 1, 2, 3, 2}).putAll("SH", (Object[]) new Integer[]{4, 2, 2, 2, 2, 2}).putAll("SI", (Object[]) new Integer[]{0, 0, 0, 0, 2, 2}).putAll("SJ", (Object[]) new Integer[]{2, 2, 2, 2, 2, 2}).putAll("SK", (Object[]) new Integer[]{0, 1, 0, 0, 2, 2}).putAll("SL", (Object[]) new Integer[]{4, 3, 4, 0, 2, 2}).putAll("SM", (Object[]) new Integer[]{0, 2, 2, 2, 2, 2}).putAll("SN", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("SO", (Object[]) new Integer[]{3, 3, 3, 4, 2, 2}).putAll("SR", (Object[]) new Integer[]{3, 2, 2, 2, 2, 2}).putAll("SS", (Object[]) new Integer[]{4, 4, 3, 3, 2, 2}).putAll("ST", (Object[]) new Integer[]{2, 2, 1, 2, 2, 2}).putAll("SV", (Object[]) new Integer[]{2, 1, 4, 3, 2, 2}).putAll("SX", (Object[]) new Integer[]{2, 2, 1, 0, 2, 2}).putAll("SY", (Object[]) new Integer[]{4, 3, 3, 2, 2, 2}).putAll("SZ", (Object[]) new Integer[]{3, 3, 2, 4, 2, 2}).putAll("TC", (Object[]) new Integer[]{2, 2, 2, 0, 2, 2}).putAll("TD", (Object[]) new Integer[]{4, 3, 4, 4, 2, 2}).putAll("TG", (Object[]) new Integer[]{3, 2, 2, 4, 2, 2}).putAll("TH", (Object[]) new Integer[]{0, 3, 2, 3, 2, 2}).putAll("TJ", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("TL", (Object[]) new Integer[]{4, 0, 4, 4, 2, 2}).putAll("TM", (Object[]) new Integer[]{4, 2, 4, 3, 2, 2}).putAll("TN", (Object[]) new Integer[]{2, 1, 1, 2, 2, 2}).putAll("TO", (Object[]) new Integer[]{3, 3, 4, 3, 2, 2}).putAll("TR", (Object[]) new Integer[]{1, 2, 1, 1, 2, 2}).putAll("TT", (Object[]) new Integer[]{1, 4, 0, 1, 2, 2}).putAll("TV", (Object[]) new Integer[]{3, 2, 2, 4, 2, 2}).putAll("TW", (Object[]) new Integer[]{0, 0, 0, 0, 1, 0}).putAll("TZ", (Object[]) new Integer[]{3, 3, 3, 2, 2, 2}).putAll("UA", (Object[]) new Integer[]{0, 3, 1, 1, 2, 2}).putAll("UG", (Object[]) new Integer[]{3, 2, 3, 3, 2, 2}).putAll("US", (Object[]) new Integer[]{1, 1, 2, 2, 4, 2}).putAll("UY", (Object[]) new Integer[]{2, 2, 1, 1, 2, 2}).putAll("UZ", (Object[]) new Integer[]{2, 1, 3, 4, 2, 2}).putAll("VC", (Object[]) new Integer[]{1, 2, 2, 2, 2, 2}).putAll("VE", (Object[]) new Integer[]{4, 4, 4, 4, 2, 2}).putAll("VG", (Object[]) new Integer[]{2, 2, 1, 1, 2, 2}).putAll("VI", (Object[]) new Integer[]{1, 2, 1, 2, 2, 2}).putAll("VN", (Object[]) new Integer[]{0, 1, 3, 4, 2, 2}).putAll("VU", (Object[]) new Integer[]{4, 0, 3, 1, 2, 2}).putAll("WF", (Object[]) new Integer[]{4, 2, 2, 4, 2, 2}).putAll("WS", (Object[]) new Integer[]{3, 1, 3, 1, 2, 2}).putAll("XK", (Object[]) new Integer[]{0, 1, 1, 0, 2, 2}).putAll("YE", (Object[]) new Integer[]{4, 4, 4, 3, 2, 2}).putAll("YT", (Object[]) new Integer[]{4, 2, 2, 3, 2, 2}).putAll("ZA", (Object[]) new Integer[]{3, 3, 2, 1, 2, 2}).putAll("ZM", (Object[]) new Integer[]{3, 2, 3, 3, 2, 2}).putAll("ZW", (Object[]) new Integer[]{3, 2, 4, 3, 2, 2}).build();
    }

    private long getInitialBitrateEstimateForNetworkType(int i) {
        Long l = this.initialBitrateEstimates.get(Integer.valueOf(i));
        if (l == null) {
            l = this.initialBitrateEstimates.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        if (singletonInstance == null) {
            singletonInstance = new Builder(context).build();
        }
        return singletonInstance;
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    private void maybeNotifyBandwidthSample(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j2;
        this.eventDispatcher.bandwidthSample(i, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        int i2 = this.networkType;
        if (i2 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i = this.networkTypeOverride;
            }
            if (i2 == i) {
                return;
            }
            this.networkType = i;
            if (i != 1 && i != 0 && i != 8) {
                this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i);
                long jElapsedRealtime = this.clock.elapsedRealtime();
                maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (jElapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = jElapsedRealtime;
                this.sampleBytesTransferred = 0L;
                this.totalBytesTransferred = 0L;
                this.totalElapsedTimeMs = 0L;
                this.slidingPercentile.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public /* synthetic */ long getTimeToFirstByteEstimateUs() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.sampleBytesTransferred += (long) i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            Assertions.checkState(this.streamCount > 0);
            long jElapsedRealtime = this.clock.elapsedRealtime();
            int i = (int) (jElapsedRealtime - this.sampleStartTimeMs);
            this.totalElapsedTimeMs += (long) i;
            long j = this.totalBytesTransferred;
            long j2 = this.sampleBytesTransferred;
            this.totalBytesTransferred = j + j2;
            if (i > 0) {
                this.slidingPercentile.addSample((int) Math.sqrt(j2), (j2 * 8000.0f) / i);
                if (this.totalElapsedTimeMs >= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS || this.totalBytesTransferred >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    this.bitrateEstimate = (long) this.slidingPercentile.getPercentile(0.5f);
                }
                maybeNotifyBandwidthSample(i, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = jElapsedRealtime;
                this.sampleBytesTransferred = 0L;
            }
            this.streamCount--;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            if (this.streamCount == 0) {
                this.sampleStartTimeMs = this.clock.elapsedRealtime();
            }
            this.streamCount++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i) {
        this.networkTypeOverride = i;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i);
    }

    public static final class Builder {
        private Clock clock;
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.getCountryCode(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
        }

        private static ImmutableList<Integer> getCountryGroupIndices(String str) {
            ImmutableList<Integer> immutableList = DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS.get(str);
            return immutableList.isEmpty() ? ImmutableList.of(2, 2, 2, 2, 2, 2) : immutableList;
        }

        private static Map<Integer, Long> getInitialBitrateEstimatesForCountry(String str) {
            ImmutableList<Integer> countryGroupIndices = getCountryGroupIndices(str);
            HashMap map = new HashMap(8);
            map.put(0, 1000000L);
            ImmutableList<Long> immutableList = DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            map.put(2, immutableList.get(countryGroupIndices.get(0).intValue()));
            map.put(3, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(countryGroupIndices.get(1).intValue()));
            map.put(4, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(countryGroupIndices.get(2).intValue()));
            map.put(5, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(countryGroupIndices.get(3).intValue()));
            map.put(10, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(countryGroupIndices.get(4).intValue()));
            map.put(9, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(countryGroupIndices.get(5).intValue()));
            map.put(7, immutableList.get(countryGroupIndices.get(0).intValue()));
            return map;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j) {
            Iterator<Integer> it = this.initialBitrateEstimates.keySet().iterator();
            while (it.hasNext()) {
                setInitialBitrateEstimate(it.next().intValue(), j);
            }
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z) {
            this.resetOnNetworkTypeChange = z;
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i) {
            this.slidingWindowMaxWeight = i;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i, long j) {
            this.initialBitrateEstimates.put(Integer.valueOf(i), Long.valueOf(j));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Ascii.toUpperCase(str));
            return this;
        }
    }

    @Deprecated
    public DefaultBandwidthMeter() {
        this(null, ImmutableMap.of(), 2000, Clock.DEFAULT, false);
    }

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> map, int i, Clock clock, boolean z) {
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(i);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z;
        if (context != null) {
            NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
            int networkType = networkTypeObserver.getNetworkType();
            this.networkType = networkType;
            this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
            networkTypeObserver.register(new NetworkTypeObserver.Listener() { // from class: com.google.android.exoplayer2.upstream.b
                @Override // com.google.android.exoplayer2.util.NetworkTypeObserver.Listener
                public final void onNetworkTypeChanged(int i2) {
                    this.f11997a.onNetworkTypeChanged(i2);
                }
            });
            return;
        }
        this.networkType = 0;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(0);
    }
}
