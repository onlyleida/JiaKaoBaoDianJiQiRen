package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class ValueServer {
    public static final int CONSTANT_MODE = 5;
    public static final int DIGEST_MODE = 0;
    public static final int EXPONENTIAL_MODE = 3;
    public static final int GAUSSIAN_MODE = 4;
    public static final int REPLAY_MODE = 1;
    public static final int UNIFORM_MODE = 2;
    private EmpiricalDistribution empiricalDistribution;
    private BufferedReader filePointer;
    private int mode;
    private double mu;
    private final RandomDataGenerator randomData;
    private double sigma;
    private URL valuesFileURL;

    public ValueServer() {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = new RandomDataGenerator();
    }

    private double getNextDigest() throws MathIllegalStateException {
        EmpiricalDistribution empiricalDistribution = this.empiricalDistribution;
        if (empiricalDistribution == null || empiricalDistribution.getBinStats().size() == 0) {
            throw new MathIllegalStateException(LocalizedFormats.DIGEST_NOT_INITIALIZED, new Object[0]);
        }
        return this.empiricalDistribution.getNextValue();
    }

    private double getNextExponential() throws MathIllegalArgumentException {
        return this.randomData.nextExponential(this.mu);
    }

    private double getNextGaussian() throws MathIllegalArgumentException {
        return this.randomData.nextGaussian(this.mu, this.sigma);
    }

    private double getNextReplay() throws MathIllegalStateException, IOException {
        if (this.filePointer == null) {
            resetReplayFile();
        }
        String line = this.filePointer.readLine();
        if (line == null) {
            closeReplayFile();
            resetReplayFile();
            line = this.filePointer.readLine();
            if (line == null) {
                throw new MathIllegalStateException(LocalizedFormats.URL_CONTAINS_NO_DATA, this.valuesFileURL);
            }
        }
        return Double.parseDouble(line);
    }

    private double getNextUniform() throws MathIllegalArgumentException {
        return this.randomData.nextUniform(0.0d, this.mu * 2.0d);
    }

    public void closeReplayFile() throws IOException {
        BufferedReader bufferedReader = this.filePointer;
        if (bufferedReader != null) {
            bufferedReader.close();
            this.filePointer = null;
        }
    }

    public void computeDistribution() throws Throwable {
        computeDistribution(1000);
    }

    public void fill(double[] dArr) throws MathIllegalStateException, IOException, MathIllegalArgumentException {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = getNext();
        }
    }

    public EmpiricalDistribution getEmpiricalDistribution() {
        return this.empiricalDistribution;
    }

    public int getMode() {
        return this.mode;
    }

    public double getMu() {
        return this.mu;
    }

    public double getNext() throws MathIllegalStateException, IOException, MathIllegalArgumentException {
        int i = this.mode;
        if (i == 0) {
            return getNextDigest();
        }
        if (i == 1) {
            return getNextReplay();
        }
        if (i == 2) {
            return getNextUniform();
        }
        if (i == 3) {
            return getNextExponential();
        }
        if (i == 4) {
            return getNextGaussian();
        }
        if (i == 5) {
            return this.mu;
        }
        throw new MathIllegalStateException(LocalizedFormats.UNKNOWN_MODE, Integer.valueOf(this.mode), "DIGEST_MODE", 0, "REPLAY_MODE", 1, "UNIFORM_MODE", 2, "EXPONENTIAL_MODE", 3, "GAUSSIAN_MODE", 4, "CONSTANT_MODE", 5);
    }

    public double getSigma() {
        return this.sigma;
    }

    public URL getValuesFileURL() {
        return this.valuesFileURL;
    }

    public void reSeed(long j) {
        this.randomData.reSeed(j);
    }

    public void resetReplayFile() throws IOException {
        BufferedReader bufferedReader = this.filePointer;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
                this.filePointer = null;
            } catch (IOException unused) {
            }
        }
        this.filePointer = new BufferedReader(new InputStreamReader(this.valuesFileURL.openStream(), "UTF-8"));
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public void setMu(double d2) {
        this.mu = d2;
    }

    public void setSigma(double d2) {
        this.sigma = d2;
    }

    public void setValuesFileURL(String str) throws MalformedURLException {
        this.valuesFileURL = new URL(str);
    }

    public void computeDistribution(int i) throws Throwable {
        EmpiricalDistribution empiricalDistribution = new EmpiricalDistribution(i, this.randomData.getRandomGenerator());
        this.empiricalDistribution = empiricalDistribution;
        empiricalDistribution.load(this.valuesFileURL);
        this.mu = this.empiricalDistribution.getSampleStats().getMean();
        this.sigma = this.empiricalDistribution.getSampleStats().getStandardDeviation();
    }

    public void setValuesFileURL(URL url) {
        this.valuesFileURL = url;
    }

    public double[] fill(int i) throws MathIllegalStateException, IOException, MathIllegalArgumentException {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = getNext();
        }
        return dArr;
    }

    @Deprecated
    public ValueServer(RandomDataImpl randomDataImpl) {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = randomDataImpl.getDelegate();
    }

    public ValueServer(RandomGenerator randomGenerator) {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = new RandomDataGenerator(randomGenerator);
    }
}
